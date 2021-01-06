# Alphabet-Daily-Tasks
A repository for solutions to the daily tasks in the [\*\*AlphaBet\*\* server](https://alphabetcommunity.tech).

## Repository layout
The repository is organized in folders, each with a name of the year the tasks are from. In those folders, there is a folder for each language. In those folders there are files for the corresponding tasks.
Example:
```console
2021
|---java
    |---Day0101.java
|---clojure
    |---day0101.clj
```

## Naming conventions
The name of a file should be in the format `(day|Day)date.ext` where:
* `(day|Day)` is either `day` or `Day` depending on the language's naming conventions;
* `date` is the date in `mmdd` format;
* `ext` is the extension for the language.
Example: `Day0104.java`, `day0106.clj`

## Contribution
If you want to add a solution of yours, follow the layout and naming conventions of the repository. Make a branch with your name and create a pull request. Your code should be runnable right away and should print the answers to the test cases provided in a somewhat readable way:
This output won't be accepted:
```console
0 2 198 false false true "zkkov" "Svool dliow!"
```
This output will be accepted:
```console
0 2 198
false false true
"zkkov" "Svool dliow!"
```
This output won't be accepted:
```console
0
2
198
false
false
true
"zkkov"
"Svool dliow!"
```
This output will be accepted:
```console
0
2
198
-----
false
false
true
-----
"zkkov"
"Svool dliow!"
```
---
Make a comment at the top with your Discord name and discriminator (e.g. `Loading BG#7962`). If there is already a solution in the same language for the same day, add something to the name to make it different (e.g. `Day0101_2.java`). Filenames like `Day0101_hubvoiernvapmv.java` won't be accepted. If you can't use Git, DM me (`Loading BG#7962`) with the file and I'll add it.

## Other repositories
[Gauravsingh#6969's repo](https://github.com/gauravsingh5/tasks) for Python and C++.
