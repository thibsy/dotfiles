#!/bin/bash

# Wrapper around the 'git' command to automatically sign the commits.
#
# This function intercepts calls to 'git' within $PATH when sourced inside
# your shell profile. It provides the '-S' flag to all 'commit' calls, if
# not already there.
#
# This avoids setting 'commit.gpgSign' to true, which can be annoying in
# certain scenarios e.g. 'rebase'.
git() {
    if [ "${1}" != "commit" ]; then
        /usr/bin/git "${@}"
        return $?
    fi

    for argument in "${@}"; do
        if [ "${argument}" = "-S" ] || [ "${argument}" = "-s" ]; then
            /usr/bin/git "${@}"
            return $?
        fi
    done

    shift # 'commit' at ${1}
    /usr/bin/git commit -S "${@}"
    return $?
}
