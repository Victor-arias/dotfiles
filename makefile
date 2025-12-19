## Usage: make [task] ...
##
# Keep the help first, please.
help:
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

stow-all: ## Stow all packages in the $HOME dir, checking if they exists and considering dotfiles.
	stow -v --dotfiles --restow -t=$$HOME */

delete-all: ## Delete all packages in the $HOME dir.
	stow -v --delete -t=$$HOME */
