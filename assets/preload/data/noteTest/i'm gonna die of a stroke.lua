function onCreate()
    makeLuaText('misses', 'Misses:' .. getProperty('songMisses'), 600, 0, 350);
	makeLuaText('mode', '', 460, 0, 380);
	addLuaText('misses');
	setTextSize('misses', 30)
    setProperty('misses.alpha', 0)
   
   
    setProperty('healthBarBG.x', 100)
	setProperty('healthBar.x', 100)
	setProperty('scoreTxt.x', -250)
    setProperty('timeBar.x', 760)
    setProperty('timeBarBG.x', 760)
    setProperty('timeTxt.x', 760)

    setProperty('timeBar.y', -100)
    setProperty('timeBarBG.y', -100)
    setProperty('timeTxt.y', -100)
end


function onUpdate()
end


function onStepHit()
    if curStep == 1 then
        doTweenY('hudintro6', 'timeBar', 33, 1, 'backOut')
		doTweenY('hudintro7', 'timeBarBG', 33, 1, 'backOut')
		doTweenY('hudintro8', 'timeTxt', 17, 1.2, 'backOut')


        doTweenAlpha('MissesAlphaTween1','misses',1 ,1.2 ,'quartInOut')


        noteTweenX('BFmoveMiddleTween1', 4, 410, 0.6, 'quartInOut')
        noteTweenAngle('BFangleMiddleTween1', 4, 360, 1,'quartInOut')
        noteTweenAlpha('BFAlphaMiddleTween1', 4, 0.8, 0.6, 'quintOut')

        noteTweenX('BFmoveMiddleTween2', 5, 522, 0.8, 'quartInOut')
        noteTweenAngle('BFangleMiddleTween2', 5, 360, 1.2,'quartInOut')
        noteTweenAlpha('BFAlphaMiddleTween2', 5, 0.8, 0.8, 'quintOut')

        noteTweenX('BFmoveMiddleTween3', 6, 633, 1, 'quartInOut')
        noteTweenAngle('BFangleMiddleTween3', 6, 360, 1.4,'quartInOut')
        noteTweenAlpha('BFAlphaMiddleTween3',6, 0.8, 1, 'quintOut')

        noteTweenX('BFmoveMiddleTween4', 7, 745, 1.2, 'quartInOut')
        noteTweenAngle('BFangleMiddleTween4', 7, 360, 1.6,'quartInOut')
        noteTweenAlpha('BFAlphaMiddleTween4', 7, 0.8, 1.2, 'quintOut')


        noteTweenX('OPmoveMiddleTween1', 0, 410, 0.6, 'quartInOut')
        noteTweenAngle('OPangleMiddleTween1', 0, 360, 1,'quartInOut')
        noteTweenAlpha('OPAlphaMiddleTween1', 0, 0.3, 0.6, 'quintOut')

        noteTweenX('OPmoveMiddleTween2', 1, 522, 0.8, 'quartInOut')
        noteTweenAngle('OPangleMiddleTween2', 1, 360, 1.2,'quartInOut')
        noteTweenAlpha('OPAlphaMiddleTween2', 1, 0.3, 0.8, 'quintOut')

        noteTweenX('OPmoveMiddleTween3', 2, 633, 1, 'quartInOut')  
        noteTweenAngle('OPangleMiddleTween3', 2, 360, 1.4,'quartInOut')
        noteTweenAlpha('OPAlphaMiddleTween3', 2, 0.3, 1, 'quintOut')

        noteTweenX('OPmoveMiddleTween4', 3, 745, 1.2, 'quartInOut')
        noteTweenAngle('OPangleMiddleTween4', 3, 360, 1.6,'quartInOut')
        noteTweenAlpha('OPAlphaMiddleTween4', 3, 0.3, 1.2, 'quintOut')

        doTweenAlpha('IconAlphaTween1', 'iconP1', 0, 1.2, 'quartInOut')
        doTweenAlpha('IconAlphaTween2', 'iconP2', 0, 1.2, 'quartInOut')



        doTweenAngle('HudAngleTween1', 'healthBar', 90, 1.2, 'quartInOut')
        doTweenX('HudMoveTween1', 'healthBar', 50, 1.2, 'quartInOut')
        doTweenY('HudMoveYtween1', 'healthBar', 350, 1.2, 'quartInOut')

        doTweenAngle('HudAngleTween2', 'healthBarBG', 90, 1.2, 'quartInOut')
        doTweenX('HudMoveTween2', 'healthBarBG', 50, 1.2, 'quartInOut')
    end


    if curStep == 24 then
        doTweenX('TimebarMoveTween1', 'timeBar', 440, 1.2, 'quartInOut')
        doTweenX('TimebarMoveTween2', 'timeBarBG', 440, 1.2, 'quartInOut')
        doTweenX('TimebarMoveTween3', 'timeTxt', 440, 1.2, 'quartInOut')
        doTweenX('ScoreTXTtween1', 'scoreTxt', 0, 1.2, 'quartInOut')
    end
end

function onRecalculateRating()
	setTextString('misses', 'Misses:' .. getProperty('songMisses'));
end