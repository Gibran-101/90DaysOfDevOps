## Task 5: Rebasing - Keeping a Clean Commit History

### Scenario: Your branch is behind the main branch and needs to be updated without extra merge commits.

1. **Fetch the latest changes:**

    ```bash
    git fetch origin main
    ```

2. **Rebase the feature branch onto main:**

    ```bash
    git rebase origin/main
    ```

3. **Resolve conflicts and continue:**

    ```bash
    git rebase --continue
    ```

---

### Difference between merge and rebase:

- **Merge**:
    - Creates a **merge commit** that combines the changes from both branches.
    - The **history** of the two branches is preserved, but it can clutter the commit log.
    - Suitable for maintaining a complete history of all merges.

- **Rebase**:
    - Rewrites the **commit history** by placing your changes on top of the latest commit from the main branch.
    - It results in a **linear commit history** without the merge commit.
    - Better for keeping the history clean and concise, but it can rewrite commit hashes, so it should be used with caution on shared branches.

---

### Best practices for rebasing:

1. **Rebase frequently** to keep your branch up to date with the main branch and avoid large rebases.
2. **Avoid rebasing public/shared branches**, as it rewrites commit history and can confuse collaborators.
3. **Resolve conflicts carefully** during a rebase to ensure no functionality is broken.
4. After completing the rebase, **force-push** (with caution) if you’ve already pushed the branch to the remote:
    
    ```bash
    git push --force
    ```

5. **Use interactive rebase** (`git rebase -i`) to clean up commits, reorder them, or squash them into a single commit before merging.

