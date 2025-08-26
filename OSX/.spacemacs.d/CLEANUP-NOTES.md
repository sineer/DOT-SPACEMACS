# Spacemacs Configuration Cleanup Notes

I've added XXX markers throughout your configuration files to identify areas that need cleanup. Here's a summary of the main issues found:

## init.el

### Critical Issues
1. **Missing font configuration** - `dotspacemacs-default-font` is set to nil (should define a font)
2. **Duplicate whitespace-cleanup** - Defined twice with conflicting values (lines ~451 and ~493)
3. **Broken dired hook** - The deer hook breaks dired mode

### Cleanup Needed
- Many commented layers (calendar, eaf, fzf, graphql, org, parinfer, prodigy, zig) - decide to remove or enable
- Commented scrolling configurations - pick one approach
- Old mu4e path hardcoded (using layer config now)
- UTF-8 settings commented - verify if needed
- Obsolete figwheel REPL function (use shadow-cljs or figwheel-main)
- Old custom-set-variables section should migrate to dotspacemacs/emacs-custom-settings

## init-mail.el

### Issues
- Duplicate `mu4e-sent-messages-behavior` setting
- Many commented html2text commands - keep only working one
- mu4e-contrib references commented
- Signature file path commented
- Private config file commented

## init-org-mode.el

### Issues
- **Python defined twice** in babel languages (line 14 and 22)
- **Security concern** - `org-confirm-babel-evaluate` set to nil (no confirmation for code execution)
- Many disabled babel languages that could be removed
- `find-file-visit-truename` affects ALL files, not just org (should be in init.el)

## Recommendations

1. **Fix critical issues first:**
   - Set a proper font in `dotspacemacs-default-font`
   - Remove duplicate whitespace-cleanup setting
   - Remove or fix the dired/deer hook

2. **Clean up commented code:**
   - Remove commented layers you don't use
   - Pick one scrolling configuration approach
   - Clean up babel languages list

3. **Organize better:**
   - Consider creating separate config files for major modes
   - Group related settings together
   - Move global settings to init.el

4. **Security:**
   - Consider enabling `org-confirm-babel-evaluate` for safety

Search for "XXX:" in your files to find all the markers I've added with specific cleanup suggestions.