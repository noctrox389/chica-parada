
function onCreate()

	runTimer('fog1', 0.1)
	runTimer('fogX1', 0.3)

	setProperty('skipCountdown',true)


	makeLuaSprite('bg', 'Lost_silver_back', -600, -300);

	makeLuaSprite('lake', 'Lost_silver_lake', -825, 490)


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

	makeLuaSprite('t r e e', 'Lost_silver_tree', -625, -470)
	scaleObject('t r e e', 0.9, 1)



	
	addLuaSprite('bg', false);
	addLuaSprite('lake', false)
	addLuaSprite('fogX1', false)
	addLuaSprite('fog1', false)
	addLuaSprite('fogX2', false)
	addLuaSprite('fog2', false)
	addLuaSprite('ground', false);
	addLuaSprite('t r e e', false)
end

function onStepHit()
	if curStep == 1 then
		doTweenZoom('camerazoom','camGame',0.8 , 5, 'quintOut')	

		noteTweenAlpha('OpAlphaLeftTween1', 0, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween2', 1, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween3', 2, 0, 0.001, 'quintOut')
		noteTweenAlpha('OpAlphaLeftTween4', 3, 0, 0.001, 'quintOut')

		noteTweenAlpha('BfAlphaLeftTween1', 4, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween2', 5, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween3', 6, 0, 0.001, 'quintOut')
		noteTweenAlpha('BfAlphaLeftTween4', 7, 0, 0.001, 'quintOut')
	end

	if curStep == 64 then
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

		noteTweenAlpha('BfAlphaTween1', 4, 0.5, 1.5, 'quintOut')
		noteTweenAngle('BfAngleTween1', 4, 360, 1.5, 'backOut')

		noteTweenAlpha('BfAlphaTween2', 5, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween2', 5, 360, 1.7, 'backOut')

		noteTweenAlpha('BfAlphaTween3', 6, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween3', 6, 360, 1.9, 'backOut')

		noteTweenAlpha('BfAlphaTween4', 7, 0.5, 0.5, 'quintOut')
		noteTweenAngle('BfAngleTween4', 7, 360, 2.1, 'backOut')






		
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
end