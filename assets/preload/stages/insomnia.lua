function onCreate()


	makeLuaText('intro1', '10 MISSES MAX', 1250, 0, 300)
	addLuaText('intro1')
	setTextSize('intro1', 60)
	setProperty('intro1.alpha', 0)

	makeLuaText('intro2', 'GHOST TAPPING IS FORCED OFF', 1250, 0, 350)
	addLuaText('intro2')
	setTextSize('intro2', 25)
	setProperty('intro2.alpha', 0)

	
	makeLuaText('misses', 'Misses:' .. getProperty('songMisses'), 1250, 0, 90);
	makeLuaText('mode', '', 460, 0, 380);
	addLuaText('misses');
	setTextSize('misses', 30)
	setProperty('misses.alpha', 0)



	runTimer('fog1', 0.1)
	runTimer('fogX1', 0.3)

	setProperty('skipCountdown',true)


	makeLuaSprite('bg', 'Lost_silver_back', -600, -300);


	--fog Y

	makeLuaSprite('fog1', 'Lost_silver_fog', -825, 260)
	setProperty('fog1.alpha', 0.2)
	setProperty('fog1.visible', true)

	makeLuaSprite('fog2', 'Lost_silver_fog', -825, 220)
	setProperty('fog2.alpha', 0.6)
	setProperty('fog2.visible', true)

	--fog X

	makeLuaSprite('fogX1', 'Lost_silver_fog', -825, 260)
	setProperty('fogX1.alpha', 1)
	setProperty('fogX1.visible', true)

	makeLuaSprite('fogX2', 'Lost_silver_fog', -825, 260)
	setProperty('fogX2.alpha', 0.4)
	setProperty('fogX1.visible', true)


	makeLuaSprite('ground', 'Lost_silver_ground', -825, 550);



	
	addLuaSprite('bg', false);
	addLuaSprite('fogX1', false)
	addLuaSprite('fog1', false)
	addLuaSprite('fogX2', false)
	addLuaSprite('fog2', false)
	addLuaSprite('ground', false);
end

function onStepHit()
	if curStep == 1 then


		noteTweenX('OPmoveMiddleTween1', 0, 410, 0.6, 'quartInOut')
        noteTweenX('OPmoveMiddleTween2', 1, 522, 0.8, 'quartInOut')
        noteTweenX('OPmoveMiddleTween3', 2, 633, 1, 'quartInOut')  
        noteTweenX('OPmoveMiddleTween4', 3, 745, 1.2, 'quartInOut')

		doTweenZoom('camerazoom','camGame',0.8 , 5, 'quintOut')	

		noteTweenAlpha('OpAlphaLeftTween1', 0, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween2', 1, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween3', 2, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween4', 3, 0, 0.001, 'quintOut')

		noteTweenY('OPmoveMiddleTweenY1', 0, 560, 0.6, 'quartInOut')
        noteTweenY('OPmoveMiddleTweenY2', 1, 560, 0.8, 'quartInOut')
        noteTweenY('OPmoveMiddleTweenY3', 2, 560, 1, 'quartInOut')  
        noteTweenY('OPmoveMiddleTweenY4', 3, 560, 1.2, 'quartInOut')

		noteTweenAlpha('BfAlphaLeftTween1', 4, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween2', 5, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween3', 6, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween4', 7, 0, 0.001, 'quintOut')

		setPropertyFromGroup('opponentStrums',0,'downScroll', true)
		setPropertyFromGroup('opponentStrums',1,'downScroll', true)
		setPropertyFromGroup('opponentStrums',2,'downScroll', true)
		setPropertyFromGroup('opponentStrums',3,'downScroll', true)
	end


	if curStep == 30 then
		doTweenAlpha('intro11', 'intro1', 1, 1.5, 'quartOut')
	end


	if curStep == 46 then
		function onUpdatePost()
			local posXOfs = math.random(-1, 1)
			setProperty('intro1.x', getProperty('intro1.x') + posXOfs)
			setProperty('intro2.x', getProperty('intro2.x') + posXOfs)
		end
		doTweenColor('intro1C1', 'intro1', 'FF0000', 2.3, 'quartOut')
		doTweenAlpha('intro2', 'intro2', 0.7, 1.2, 'quartOut')
	end

	if curStep == 50 then
		doTweenColor('intro2C1', 'intro2', 'FF0000', 2.3, 'quartOut')
	end


	if curStep == 64 then
		doTweenAlpha('intro2', 'intro1', 0, 1, 'quartOut')
		doTweenAlpha('intro3', 'intro2', 0, 1.5, 'quartOut')
		doTweenAlpha('hudintro1', 'healthBarBG', 0.5, 1, 'quintOut')
		doTweenAlpha('hudintro2', 'healthBar', 0.5, 1, 'quintOut')
		doTweenAlpha('hudintro3', 'scoreTxt', 0.5, 1, 'quintOut')
		doTweenAlpha('hudintro4', 'iconP1', 0.5, 1, 'quintOut')
		doTweenAlpha('hudintro5', 'iconP2', 0.5, 1, 'quintOut')

		doTweenY('hudintro6', 'timeBar', 33, 1, 'backOut')
		doTweenY('hudintro7', 'timeBarBG', 33, 1, 'backOut')
		doTweenY('hudintro8', 'timeTxt', 17, 1.2, 'backOut')
	end

	if curStep == 188 then
		noteTweenAlpha('BfAlphaLeftTween1', 6, 0.5, 1, 'quintOut')
	end

	if curStep == 190 then
		noteTweenAlpha('BfAlphaLeftTween1', 4, 0.5, 1, 'quintOut')
	end

	if curStep == 194 then
		noteTweenAlpha('BfAlphaLeftTween1', 7, 0.5, 1, 'quintOut')
	end

	if curStep == 198 then
		noteTweenAlpha('BfAlphaLeftTween1', 5, 0.5, 1, 'quintOut')
	end



	if curStep == 591 then
		doTweenZoom('camerazoom','camGame',1.1 , 4, 'sineInOut')	
		doTweenAlpha('hud1', 'healthBarBG', 0, 0.5, 'sineOut')
		doTweenAlpha('hud2', 'healthBar', 0, 0.5, 'sineOut')
		doTweenAlpha('hud3', 'scoreTxt', 0, 0.5, 'sineOut')
		doTweenAlpha('hud4', 'iconP1', 0, 0.5, 'sineOut')
		doTweenAlpha('hud5', 'iconP2', 0, 0.5, 'sineOut')

		doTweenY('hud6', 'timeBar', -100, 0.5, 'backIn')
		doTweenY('hud7', 'timeBarBG', -100, 0.5, 'backIn')
		doTweenY('hud8', 'timeTxt', -100, 0.7, 'backIn')

		noteTweenAlpha('BfAlphaTween1', 4, 0, 0.5, 'quintOut')
		noteTweenAlpha('BfAlphaTween2', 5, 0, 0.5, 'quintOut')
		noteTweenAlpha('BfAlphaTween3', 6, 0, 0.5, 'quintOut')
		noteTweenAlpha('BfAlphaTween4', 7, 0, 0.5, 'quintOut')

		noteTweenY('BfMoveTween1', 4, -200, 0.5, 'backIn')
		noteTweenY('BfMoveTween2', 5, -200, 0.7, 'backIn')
		noteTweenY('BfMoveTween3', 6, -200, 0.9, 'backIn')
		noteTweenY('BfMoveTween4', 7, -200, 1.1, 'backIn')
	end


	if curStep == 640 then
		
		doTweenAlpha('hud1', 'healthBarBG', 0.5, 1.5, 'sineOut')
		doTweenAlpha('hud2', 'healthBar', 0.5, 1.5, 'sineOut')
		doTweenAlpha('hud3', 'scoreTxt', 0.5, 1.5, 'sineOut')
		doTweenAlpha('hud4', 'iconP1', 0.5, 1.5, 'sineOut')
		doTweenAlpha('hud5', 'iconP2', 0.5, 1.5, 'sineOut')

		doTweenY('hud6', 'timeBar', 33, 1.5, 'backOut')
		doTweenY('hud7', 'timeBarBG', 33, 1.5, 'backOut')
		doTweenY('hud8', 'timeTxt', 17, 1.7, 'backOut')

		noteTweenAlpha('BfAlphaTween1', 4, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween1', 4, 360, 1.5, 'backOut')

		noteTweenAlpha('BfAlphaTween2', 5, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween2', 5, 360, 2, 'backOut')

		noteTweenAlpha('BfAlphaTween3', 6, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween3', 6, 360, 2.5, 'backOut')

		noteTweenAlpha('BfAlphaTween4', 7, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween4', 7, 360, 3, 'backOut')

		noteTweenY('BfMove2Tween1', 4, 50, 0.5, 'backOut')
		noteTweenY('BfMove2Tween2', 5, 50, 1, 'backOut')
		noteTweenY('BfMove2Tween3', 6, 50, 1.5, 'backOut')
		noteTweenY('BfMove2Tween4', 7, 50, 2, 'backOut')

	end


	if curStep == 1901 then


		doTweenX('missesmove','misses', -300 ,1.2 , 'quartInOut')

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


		noteTweenAlpha('OPAlphaMiddleTween1', 0, 0.6, 1.6, 'quintOut')
		noteTweenAlpha('OPAlphaMiddleTween2', 1, 0.6, 1.8, 'quintOut')
		noteTweenAlpha('OPAlphaMiddleTween3', 2, 0.6, 2, 'quintOut')
		noteTweenAlpha('OPAlphaMiddleTween4', 3, 0.6, 2.2, 'quintOut')


		doTweenAlpha('HudAngleTween1', 'healthBar', 0, 1.2, 'quartInOut')

		doTweenAlpha('HudAngleTween2', 'healthBarBG', 0, 1.2, 'quartInOut')

		doTweenAlpha('IconAlphaTween1', 'iconP1', 0, 1.2, 'quartInOut')
        doTweenAlpha('IconAlphaTween2', 'iconP2', 0, 1.2, 'quartInOut')


		doTweenX('TimebarMoveTween1', 'timeBar', 440, 1.2, 'quartInOut')
        doTweenX('TimebarMoveTween2', 'timeBarBG', 440, 1.2, 'quartInOut')
        doTweenX('TimebarMoveTween3', 'timeTxt', 440, 1.2, 'quartInOut')
        doTweenX('ScoreTXTtween1', 'scoreTxt', 0, 1.2, 'quartInOut')
	end



	if curStep == 2203 then

		doTweenZoom('camerazoom','camGame',2 , 10, 'sineInOut')	
		doTweenAlpha('hud1', 'healthBarBG', 0, 0.5, 'sineOut')
		doTweenAlpha('hud2', 'healthBar', 0, 0.5, 'sineOut')
		doTweenAlpha('hud3', 'scoreTxt', 0, 0.5, 'sineOut')
		doTweenAlpha('hud4', 'iconP1', 0, 0.5, 'sineOut')
		doTweenAlpha('hud5', 'iconP2', 0, 0.5, 'sineOut')

		doTweenY('hud6', 'timeBar', -100, 0.5, 'backIn')
		doTweenY('hud7', 'timeBarBG', -100, 0.5, 'backIn')
		doTweenY('hud8', 'timeTxt', -100, 0.7, 'backIn')

		noteTweenAlpha('BfAlphaTween1', 4, 0, 0.5, 'quintOut')
		noteTweenAlpha('BfAlphaTween2', 5, 0, 0.7, 'quintOut')
		noteTweenAlpha('BfAlphaTween3', 6, 0, 0.9, 'quintOut')
		noteTweenAlpha('BfAlphaTween4', 7, 0, 1.1, 'quintOut')

		noteTweenY('BfMove3Tween1', 4, -200, 0.5, 'backIn')
		noteTweenY('BfMove3Tween2', 5, -200, 0.7, 'backIn')
		noteTweenY('BfMove3Tween3', 6, -200, 0.9, 'backIn')
		noteTweenY('BfMove3Tween4', 7, -200, 1.1, 'backIn')

		noteTweenAlpha('OpAlphaLeftTween1', 0, 0, 0.5, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween2', 1, 0, 0.7, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween3', 2, 0, 0.9, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween4', 3, 0, 1.1, 'quintOut')

		noteTweenY('OpMoveTween1', 0, -200, 0.5, 'backIn')
		noteTweenY('OpMoveTween2', 1, -200, 0.7, 'backIn')
		noteTweenY('OpMoveTween3', 2, -200, 0.9, 'backIn')
		noteTweenY('OpMoveTween4', 3, -200, 1.1, 'backIn')

		setPropertyFromGroup('opponentStrums',0,'downScroll', false)
		setPropertyFromGroup('opponentStrums',1,'downScroll', false)
		setPropertyFromGroup('opponentStrums',2,'downScroll', false)
		setPropertyFromGroup('opponentStrums',3,'downScroll', false)

	end




	if curStep == 2328 then
		doTweenAlpha('hud1', 'healthBarBG', 0.5, 1.5, 'sineOut')

		doTweenY('hud6', 'timeBar', 33, 1.5, 'backOut')
		doTweenY('hud7', 'timeBarBG', 33, 1.5, 'backOut')
		doTweenY('hud8', 'timeTxt', 17, 1.7, 'backOut')

		noteTweenAlpha('BfAlphaTween1', 4, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween1', 4, 360, 1.5, 'backOut')

		noteTweenAlpha('BfAlphaTween2', 5, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween2', 5, 360, 2, 'backOut')

		noteTweenAlpha('BfAlphaTween3', 6, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween3', 6, 360, 2.5, 'backOut')

		noteTweenAlpha('BfAlphaTween4', 7, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween4', 7, 360, 3, 'backOut')

		noteTweenY('BfMove4Tween1', 4, 50, 0.5, 'backOut')
		noteTweenY('BfMove4Tween2', 5, 50, 1, 'backOut')
		noteTweenY('BfMove4Tween3', 6, 50, 1.5, 'backOut')
		noteTweenY('BfMove4Tween4', 7, 50, 2, 'backOut')


		noteTweenAlpha('OPAlphaMiddle2Tween1', 0, 0.3, 1.6, 'quintOut')
		noteTweenAlpha('OPAlphaMiddle2Tween2', 1, 0.3, 1.8, 'quintOut')
		noteTweenAlpha('OPAlphaMiddle2Tween3', 2, 0.3, 2, 'quintOut')
		noteTweenAlpha('OPAlphaMiddle2Tween4', 3, 0.3, 2.2, 'quintOut')

		noteTweenY('OpMove2Tween1', 0, 50, 0.5, 'backOut')
		noteTweenY('OpMove2Tween2', 1, 50, 1, 'backOut')
		noteTweenY('OpMove2Tween3', 2, 50, 1.5, 'backOut')
		noteTweenY('OpMove2Tween4', 3, 50, 2, 'backOut')
	end
end



function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'fog1' then
		runTimer('fog2', 1.4)

		doTweenY('fog1 Move1', 'fog1', 185, 1.3, 'sineInOut')
		doTweenAlpha('fog1 Alpha1', 'fog1', 0.2, 1.3, 'sineInOut')

		doTweenY('fog2 Move1', 'fog2', 250, 1.3, 'sineInOut')
		doTweenAlpha('fog2 Alpha1', 'fog2', 0.5, 1.3, 'sineInOut')

	end

	if tag == 'fog2' then
		runTimer('fog1', 1.5)

		doTweenY('fog1 Move2', 'fog1', 250, 1.4, 'sineInOut')
		doTweenAlpha('fog1 Alpha2', 'fog1', 0.6, 1.4, 'sineInOut')

		doTweenY('fog2 Move2', 'fog2', 185, 1.4, 'sineInOut')
		doTweenAlpha('fog2 Alpha2', 'fog2', 0.1, 1.4, 'sineInOut')
	end


	if tag == 'fogX1' then
		runTimer('fogX2', 4)

		doTweenX('fogX1 Move1', 'fogX1', -650, 3.9, 'sineInOut')
		doTweenAlpha('fogX1 Alpha1', 'fogX1', 0.5, 3.9, 'sineInOut')

		doTweenX('fogX2 Move1', 'fogX2', -900, 3.9, 'sineInOut')
		doTweenAlpha('fogX2 Alpha1', 'fogX2', 1, 3.9, 'sineInOut')
	end

	if tag == 'fogX2' then
		runTimer('fogX1', 4)

		doTweenX('fogX1 Move2', 'fogX1', -900, 3.9, 'sineInOut')
		doTweenAlpha('fogX1 Alpha2', 'fogX1', 1, 3.9, 'sineInOut')

		doTweenX('fogX2 Move2', 'fogX2', -650, 3.9, 'sineInOut')
		doTweenAlpha('fogX2 Alpha2', 'fogX2', 0.6, 3.9, 'sineInOut')
	end

	if tag == 'misses' then
		doTweenAlpha('missesAlpha1', 'misses', 0, 0.5, 'linear')
	end

end

function onRecalculateRating()
	setTextString('misses', 'Misses:' .. getProperty('songMisses'));

	if getProperty('songMisses') == 0 then
		doTweenColor('misses0', 'misses', 'FFFFFF', 0.2, 'linear');
		runTimer('misses', 2)
	end
	
	if getProperty('songMisses') == 1 then
		doTweenColor('misses1', 'misses', 'FFE5E5', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 2 then
		doTweenColor('misses2', 'misses', 'FFCCCC', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 3 then
		doTweenColor('misses3', 'misses', 'FFB2B2', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 4 then
		doTweenColor('misses4', 'misses', 'FF9999', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 5 then
		doTweenColor('misses5', 'misses', 'FF7F7F', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 6 then
		doTweenColor('misses6', 'misses', 'FF6666', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 7 then
		doTweenColor('misses7', 'misses', 'FF4C4C', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 8 then
		doTweenColor('misses8', 'misses', 'FF2626', 0.2, 'linear');
		runTimer('misses', 2)
	end

	if getProperty('songMisses') == 9 then
		function onUpdatePost()
			local posXOfs = math.random(-1, 1)
			setProperty('misses.x', getProperty('misses.x') + posXOfs)
		end
		doTweenColor('misses9', 'misses', 'FF0000', 0.2, 'linear');
		runTimer('misses', 3)
	end


	if getProperty('songMisses') == 10 then
		setProperty('health', 0)
	end

	if getProperty('songMisses') == 11 then
		setProperty('health', 0)
	end

	if getProperty('songMisses') == 12 then
		setProperty('health', 0)
	end

	if getProperty('songMisses') == 13 then
		setProperty('health', 0)
	end

	if getProperty('songMisses') == 14 then
		setProperty('health', 0)
	end
end

function onUpdate()
	setTextString("botplayTxt", " ")
end