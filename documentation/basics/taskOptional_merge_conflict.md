### 💥 Optional Task: Merge Conflict Simulation

1. **Create and switch to `experimental` branch** from main:

    ```bash
    git checkout main
    git branch experimental
    git checkout experimental
    ```

2. **Make conflicting changes** to `info.txt`, commit them:

    ```bash
    git add info.txt
    git commit -m "Experimental chaos: conflicting change"
    ```

3. **Merge experimental into main** to trigger a conflict:

    ```bash
    git checkout main
    git merge experimental
    ```

4. **Manually resolve conflict** in `info.txt`.

5. **Stage and commit resolved file**:

    ```bash
    git add info.txt
    git commit -m "Resolved merge conflict like a git warlord"
    git push origin main
    ```

