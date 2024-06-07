show_meetings_test() {
  local index icon color text module

  index=$1
  next_meeting_time="$(get_tmux_option "@catppuccin_meetings_time" "$result")"
  next_meeting_icon="$(get_tmux_option "@catppuccin_meetings_icon" "$result")"
  next_meeting_color="$(get_tmux_option "@catppuccin_meetings_color" "$result")"

  module=$(build_status_module "$index" "$next_meeting_icon" "$next_meeting_color" "$next_meeting_time")

  echo "$module"
}
