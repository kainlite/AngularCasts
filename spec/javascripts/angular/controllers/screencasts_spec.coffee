# THIS IS A WIP
describe 'ScreencastsCtrl',  ->
  $injector = angular.injector(['ng', 'AngularCasts', 'ui.bootstrap'])

  $scope = $rootScope = $httpBackend = $timeout = createController = null
  beforeEach inject ($injector) ->
    $timeout = $injector.get('$timeout')
    $httpBackend = $injector.get('$httpBackend')
    $rootScope = $injector.get('$rootScope')
    $scope = $rootScope.$new()


  $controller = $injector.get('$controller')

  createController = () ->
    $controller('ScreencastsCtrl', {
      '$scope': $scope
    })

  afterEach () ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should run the Test to get the link data from the rails backend', () ->
    controller = createController()
    $scope.urlToScrape = 'http://lvh.me:3000'

    $httpBackend.whenGET('/api/screencasts').respond(200, {
      "success": true
    })
