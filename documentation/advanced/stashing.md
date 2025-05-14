## Task 3: Stashing - Save Work Without Committing

### Scenario: You need to switch branches but don’t want to commit incomplete work.

1. **Modify a file without committing:**

    ```bash
    echo "Temporary Change" >> temp.txt
    git add temp.txt
    ```

2. **Stash the changes:**

    ```bash
    git stash
    ```

3. **Switch to another branch and apply the stash:**

    ```bash
    git checkout main
    git stash pop
    ```

---

### When to use `git stash`:

- **When you need to switch branches** but you don’t want to commit incomplete work.
- **When you want to save your progress temporarily** without cluttering the commit history.
- **When you need to pull updates** from a remote branch or make fixes, but you’re not yet ready to commit your local changes.

---

### Difference between `git stash pop` and `git stash apply`:

- **`git stash pop`**:
   - Removes the stashed changes from the stash list **after applying** them.
   - Useful when you're done with the stash and no longer need it in the list.

- **`git stash apply`**:
   - Applies the stashed changes **without removing** them from the stash list.
   - Useful if you want to apply the same changes to multiple branches or keep the stash for future use.

