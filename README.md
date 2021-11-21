# 42 Norminette Linter

Simple GitHub Action that runs latest-release [42 Norminette](https://github.com/42School/norminette) check upon trigger.

## Usage

To trigger `norminette` on `git push`, [set up a workflow](https://docs.github.com/en/actions/quickstart) and replace placeholder code with the below:
```yaml
name: <workflow-name>
on: [push]
jobs:
  norminette:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: hanshazairi/42-norminette-action@v1.1.0
        # optional #
        with:
          exclude-dir: './<directory-to-exclude>'
        # optional #
```
Optionally, you may specify to exclude a directory from the Norminette check.

Next, you may choose to add a badge to your repo by adding the below to your `README.md`:
```markdown
![](https://github.com/<username>/<remote-name>/workflows/<workflow-name>/badge.svg)
```

## Constraints

This is currently a work in progress and therefore has its limitations.
- Runs `norminette` without option to add flags

## TODOs

- Run `norminette` with flags
