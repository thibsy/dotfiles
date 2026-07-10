#!/usr/bin/env bash

# shortcut to convert video files to .gif
# arguments:
#   $1 input path to video file
#   $2 output (optional) path to gif file
video_to_gif() {
    # uses arg 2 as output or derives from arg 1
    local output="${2:-${1%.*}.gif}"
    ffmpeg -i "${1}" -pix_fmt rgb8 -r 10 "${output}" && \
        gifsicle -O3 "${output}" -o "${output}"
}
