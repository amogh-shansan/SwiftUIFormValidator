# SwiftUIFormValidator (Full Package + Docs + Demos)

A reusable, protocol-based Swift package for form validation in SwiftUI with DocC documentation and demo apps.

## 📦 How to Use

### 1. Push this to a new GitHub repo:
```bash
git init
git remote add origin https://github.com/YOUR_USERNAME/SwiftUIFormValidator.git
git add .
git commit -m "Initial commit: package + docs + demo"
git push -u origin main
```

### 2. Generate Docs Locally (Optional)
```bash
swift package generate-documentation \
  --target SwiftUIFormValidator \
  --disable-indexing \
  --output-path docs \
  --transform-for-static-hosting \
  --hosting-base-path SwiftUIFormValidator
```

### 3. Publish to `gh-pages`:
```bash
git switch --orphan gh-pages
rm -rf *
cp -R docs/* .
git add .
git commit -m "Publish documentation"
git push origin gh-pages --force
```

### 4. Enable GitHub Pages:
- Go to your GitHub repo → **Settings → Pages**
- Set branch = `gh-pages`, folder = `/root`
- Your docs will be live at:  
  `https://yourusername.github.io/SwiftUIFormValidator`
