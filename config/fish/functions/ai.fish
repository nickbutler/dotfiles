function ai
  echo Beep boop, just a sec...
  set sysprompt "Be extremely concise. Answer in as few words as possible. No preamble, no filler, no explanation
  unless asked."
  claude --model claude-haiku-4-5 \
         --effort low \
         --system-prompt $sysprompt \
         --print "$argv" \
  | glow
end
