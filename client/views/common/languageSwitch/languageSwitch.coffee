import i18next from 'i18next'

Template.languageSwitch.helpers

	getLanguage: (language) ->
		i18next.t('language.' + language)

Template.languageSwitch.events

	'click .setLang': (e) ->
		FlowRouter.setParams({ language: $(e.target).attr('lang') })
		document.location.reload()
