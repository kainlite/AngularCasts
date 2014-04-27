@App = angular.module('AngularCasts', ['ngResource', 'ui.bootstrap', 'dialogs'])

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])
