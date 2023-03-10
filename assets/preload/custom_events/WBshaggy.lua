function onEvent(name, value1, value2)
  if name == 'WBshaggy' then
    function onUpdate(elapsed)
      function onMoveCamera(focus)
        if focus == 'boyfriend' then
        -- called when the camera focus on boyfriend
        elseif focus == 'dad' then
          setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 15))
        end
      end
      songPos = getSongPosition()
      local currentBeat = (songPos/2000)*(curBpm/100)
      setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 2))
      end
    end
end
