#!/usr/bin/env python3
import os, re, sys, shutil, pathlib
from urllib.parse import unquote

USAGE = f"Usage: {sys.argv[0]} <SOURCE_IMAGES_ROOT> [--move]\n" \
        "Example:\n" \
        f"  {sys.argv[0]} /path/to/source_images\n" \
        f"  {sys.argv[0]} /path/to/source_images --move  # 复制成功后删除源文件\n"

if len(sys.argv) < 2:
    print(USAGE); sys.exit(1)

SRC_ROOT = pathlib.Path(sys.argv[1]).resolve()
DO_MOVE = ("--move" in sys.argv)
DOCS_ROOT = pathlib.Path(".").resolve()

if not SRC_ROOT.is_dir():
    print(f"[ERR] SOURCE_IMAGES_ROOT not found: {SRC_ROOT}")
    sys.exit(2)

# 提取 Markdown 里的图片链接：![...](url) 和 <img src="url">
pat_md  = re.compile(r'!\[[^\]]*\]\(\s*<?([^)\s>]+)')
pat_img = re.compile(r'<img[^>]+src=["\']([^"\'>\s]+)', re.IGNORECASE)

def normalize_path(p: str) -> str:
    p = p.strip().strip("<>").replace("\\", "/")
    while p.startswith("./"):
        p = p[2:]
    return p

def is_local_asset(p: str) -> bool:
    return not re.match(r'^(?:https?:|//|data:|mailto:|#|/)', p) and (
        p.startswith("assets/")
    )

def candidates(rel: str):
    # 尝试原样与 URL 解码两种可能
    yield rel
    try:
        decoded = unquote(rel)
        if decoded != rel:
            yield decoded
    except Exception:
        pass

moved = 0
skipped = 0
missing = []

for md_path in DOCS_ROOT.rglob("*.md"):
    text = md_path.read_text(encoding="utf-8", errors="ignore")

    links = set()
    links.update(normalize_path(m.group(1)) for m in pat_md.finditer(text))
    links.update(normalize_path(m.group(1)) for m in pat_img.finditer(text))

    # 仅处理 assets/ 开头的相对路径
    targets = [p for p in links if is_local_asset(p)]
    if not targets:
        continue

    for rel in targets:
        dest = (md_path.parent / rel).resolve()
        dest.parent.mkdir(parents=True, exist_ok=True)

        # 在源根下按同样的相对路径查找
        src_found = None
        for cand in candidates(rel):
            cand_path = (SRC_ROOT / cand).resolve()
            if cand_path.is_file():
                src_found = cand_path
                break

        if not src_found:
            # 再兜底按文件名搜一遍（可能目录不一致） 
            name = pathlib.Path(unquote(rel)).name
            for cand_path in SRC_ROOT.rglob(name):
                if cand_path.is_file():
                    src_found = cand_path
                    break

        if not src_found:
            missing.append(f"{md_path}: {rel}")
            continue

        if dest.exists():
            skipped += 1
            continue

        shutil.copy2(src_found, dest)
        if DO_MOVE:
            try:
                os.remove(src_found)
            except Exception:
                pass
        moved += 1
        print(f"[OK] {src_found} -> {dest}")

print(f"\nDone. moved={moved}, skipped(existing)={skipped}, missing={len(missing)}")
if missing:
    print("\nMissing files (referenced but not found under source root):")
    for m in missing:
        print("  -", m)

