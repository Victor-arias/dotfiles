# dotfiles management

Based on [GNU Stow](https://www.gnu.org/software/stow/).

Every folder in the repo root is a Stow Package.
A package should contain the destination path and config files.

E.g: The `bat` package looks like `bat/.config/bat/config`.

Basic usage:

```bash
stow <package-name>
```

Using the `bat` package example, when running `stow bat`, a symlink will created with the content of `bat` like this:

```bash
~/.config/bat/config
```

Set target folder:

Stow target the parent folder by default. 
To change the target folder add the `-t <target-dir>` flag.

```bash
stow <package-name> -t <target-dir>
```

dotfiles management:

If files starts by a period `.`, the dotfile can be stored using the `dot-` prefix instead. Invoke stow using the `--dotfiles` flag to ensure the symlinks point to the proper dotfile.

```bash
stow <package-name> --dotfiles
```

Restow packages:

The `--restow` or `-R` flags allow stow to remove and add the package again, like a reset.

Remove packages from target dir:
he `--delete` or `-D` flags allow stow to remove a package from the target dir.

```bash
stow <package-name> -D
```
