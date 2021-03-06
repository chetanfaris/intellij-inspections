# Run IntelliJ IDEA Inspections

This GitHub Action runs a set of IntelliJ IDEA Inspections against a PR, and comments on all violations.

## Inputs

### `gh_token`

The GitHub token used to authenticate with GitHub.

**Required**

### `inspections_file`

Path to inspections file relative to root of project directory.

**Required**

## Example Usage

```yml
- name: Run IntelliJ Inspections
  uses: chetanfaris/intellij-inspections@v1
  with:
    GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    INSPECTIONS_FILE: Inspections.xml

```
