# shellcheck shell=bash
# shellcheck disable=SC2034 # Expected behavior for themes.

SCM_THEME_PROMPT_DIRTY=" ${red?}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green?}✓"
SCM_THEME_PROMPT_PREFIX="< "
SCM_THEME_PROMPT_SUFFIX=" ${green?}>"

GIT_THEME_PROMPT_DIRTY=" ${red?}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green?}✓"
GIT_THEME_PROMPT_PREFIX=" ${green?}< "
GIT_THEME_PROMPT_SUFFIX=" ${green?}>"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
	local scm_prompt_info
	scm_prompt_info="$(scm_prompt_info)"
	# PS1="${yellow?}\w ${green?}${scm_prompt_info}\n${reset_color?}→ "
	PS1="${green?}${scm_prompt_info} ${yellow?}\w ${purple?}→ ${reset_color?}"
}

safe_append_prompt_command prompt_command
