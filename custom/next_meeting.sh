show_next_meeting() {
  local index=$1
  next_meeting_time="$(get_tmux_option "@catppuccin_next_meeting_time" "$result")"
  next_meeting_icon="$(get_tmux_option "@catppuccin_next_meeting_icon" "$result")"
  next_meeting_color="$(get_tmux_option "@catppuccin_next_meeting_color" "$result")"

  local module=$(build_status_module "$index" "$next_meeting_icon" "$next_meeting_color" "$next_meeting_time")

  # if hour greater than 17 and minute greater than 30
  if [ "$(date +%H)" -ge 17 ] && [ "$(date +%M)" -ge 30 ] || [ "$(date +%H)" -ge 18 ]; then
    echo ""
  else
    echo "$module"
  fi
}
