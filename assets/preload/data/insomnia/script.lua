function onCreate()
    setProperty('healthBarBG.x', 100)
	setProperty('healthBar.x', 100)
	setProperty('scoreTxt.x', -250)
    setProperty('timeBar.x', 760)
    setProperty('timeBarBG.x', 760)
    setProperty('timeTxt.x', 760)

    setProperty('timeBar.y', -100)
    setProperty('timeBarBG.y', -100)
    setProperty('timeTxt.y', -100)

    setProperty('healthBarBG.alpha', 0)
	setProperty('healthBar.alpha', 0)
	setProperty('scoreTxt.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)

    setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
end