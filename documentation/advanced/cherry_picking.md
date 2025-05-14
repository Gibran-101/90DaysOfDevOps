## Task 4: Cherry-Picking - Selectively Apply Commits

### Scenario: A bug fix exists in another branch, and you only want to apply that specific commit.

1. **Find the commit to cherry-pick:**

    ```bash
    git log --oneline
    ```

2. **Apply a specific commit to the current branch:**

    ```bash
    git cherry-pick <commit-hash>
    ```

3. **Resolve conflicts if any:**

    ```bash
    git cherry-pick --continue
    ```

---

### How cherry-picking is used in bug fixes:

- **Cherry-picking** is helpful when you want to apply a specific commit from another branch (e.g., a bug fix) without merging the entire branch.
- It allows you to **selectively bring in changes** that fix issues or introduce new features, minimizing unnecessary changes.

---

### Risks of cherry-picking:

- **Possible merge conflicts**: If the commit you're cherry-picking has conflicts with the current branch, you’ll need to resolve them.
- **Duplicate commits**: If cherry-picking is done multiple times, it can lead to the same changes being introduced multiple times in the history, making the git history harder to follow.
- **Inconsistent history**: Cherry-picking can lead to an inconsistent commit history, as the commit will be applied in a different order than it was originally created.

