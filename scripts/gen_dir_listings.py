# -*- coding: utf-8 -*-
import os, re, pathlib
import mkdocs_gen_files

DOCS_DIR = pathlib.Path("docs")
EXCLUDE_DIRS = {"assets", "_snippets", "_templates", "images", ".git", "__pycache__"}

def get_title(md_path: pathlib.Path) -> str:
    try:
        text = md_path.read_text(encoding="utf-8")
    except Exception:
        return md_path.stem
    # front matter: title:
    m = re.match(r"^---\n(.*?)\n---\n", text, flags=re.S)
    if m:
        fm = m.group(1)
        m2 = re.search(r'^title:\s*"?(.+?)"?\s*$', fm, flags=re.M)
        if m2:
            return m2.group(1).strip()
    # first H1
    m3 = re.search(r'^\s*#\s+(.+?)\s*$', text, flags=re.M)
    if m3:
        return m3.group(1).strip()
    return md_path.stem  # 不做人为美化，保留横杠

for dirpath, dirnames, filenames in os.walk(DOCS_DIR):
    rel_dir = pathlib.Path(dirpath).relative_to(DOCS_DIR)
    if any(p in EXCLUDE_DIRS for p in rel_dir.parts):
        continue

    # 子目录（不含隐藏/排除）
    subdirs = [d for d in sorted(dirnames)
               if d not in EXCLUDE_DIRS and not d.startswith(".")]

    # 当前目录下的 md 文件（不含 index.md / 以 _ 开头）
    pages = []
    for fn in sorted(filenames):
        if not fn.lower().endswith(".md"):
            continue
        if fn in ("index.md", "README.md") or fn.startswith("_"):
            continue
        pages.append(fn)

    if not pages and not subdirs:
        continue

    out_path = rel_dir / "_auto_index.md"
    lines = []

    if subdirs:
        lines.append("## 子目录\n")
        for d in subdirs:
            idx = pathlib.Path(dirpath) / d / "index.md"
            title = get_title(idx) if idx.exists() else d
            lines.append(f"- [{title}](./{d}/)")
        lines.append("")

    if pages:
        lines.append("## 文档\n")
        for fn in pages:
            p = pathlib.Path(dirpath) / fn
            title = get_title(p)
            lines.append(f"- [{title}](./{fn})")
        lines.append("")

    with mkdocs_gen_files.open(out_path.as_posix(), "w") as f:
        f.write("\n".join(lines))
