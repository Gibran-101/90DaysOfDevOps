## 🔐 Task 3: Configure Remote URL with PAT and Push

### 1. Add remote URL with embedded Personal Access Token (PAT)

```bash
git remote add origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
```

> If `origin` already exists, use:

```bash
git remote set-url origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
```

---

### 2. Push to GitHub

```bash
git push -u origin main
```

---

### 3. Pull to verify sync

```bash
git pull origin main
```

