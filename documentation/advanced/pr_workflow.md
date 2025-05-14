# 🧩 Task 1: Working with Pull Requests (PRs)

## ✅ Steps to Create a Pull Request (PR)

### 1. Fork and Clone the Repository

```bash
git clone <your-forked-repo-url>
cd <repo-name>
```

---

### 2. Create a Feature Branch

```bash
git checkout -b feature-branch-name
```

---

### 3. Make Your Changes

Edit files, add logic, fix bugs — whatever your feature requires.

---

### 4. Stage and Commit the Changes

```bash
git add .
git commit -m "Add feature: description of the feature"
```

---

### 5. Push the Feature Branch to GitHub

```bash
git push origin feature-branch-name
```

---

### 6. Create a Pull Request

- Go to your GitHub repository.
- Click **"Compare & pull request"**.
- Fill in the PR title and description (see best practices below).
- Set the base branch (usually `main`) and assign reviewers.
- Submit the PR.

---

## ✍️ Best Practices for Writing PR Descriptions

### ✅ Clear, Descriptive Title

Examples:

- ✅ `Fix user auth redirect issue`
- ❌ `bug fix`

---

### ✅ What Changed and Why

Write a brief but clear summary of what you changed and why it matters.

---

### ✅ Link Relevant Issues

Use GitHub keywords to close related issues automatically:

```text
Closes #42
```

---

### ✅ Add Screenshots or Logs (Optional)

For UI changes or major updates, include supporting evidence:

```markdown
### Screenshots
![UI Update](screenshot.png)
```

---

### ✅ Include a Checklist (Optional)

```markdown
- [x] Feature complete
- [x] All tests pass
- [ ] Review comments addressed
```

---

## 🔄 Handling Review Comments Like a Pro

### 1. Read and Understand Feedback

Don’t argue blindly. If it’s unclear, ask.

---

### 2. Make the Changes

```bash
git add .
git commit -m "Refactor: Applied review feedback"
git push
```

---

### 3. Respond to Comments

Acknowledge each one. Justify if necessary — respectfully.

---

### 4. Mark Conversations Resolved

Click **"Resolve conversation"** after addressing comments.

---

### 5. Request Re-review if Needed

If the changes were major, ask reviewers to take another look.

---

## ✅ Merging the PR

Once approved and checks are green:

- Use **Squash and Merge** for clean commit history.
- Or **Merge** to retain commit granularity.

After merging:

```bash
git checkout main
git pull origin main
git branch -d feature-branch-name
git push origin --delete feature-branch-name
```

