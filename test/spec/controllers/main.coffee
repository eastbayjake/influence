'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'appApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($injector, $controller, $rootScope) ->
    $httpBackend = $injector.get('$httpBackend')
    $httpBackend.whenGET(/.*/).respond({fake: 'data'})
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;

describe 'Controller: BillCtrl', () ->

  # load the controller's module
  beforeEach module 'appApp'

  BillCtrl = {}
  scope = {}
  http = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($injector, $controller, $rootScope) ->
    $httpBackend = $injector.get('$httpBackend')
    $httpBackend.whenGET(/.*/).respond({fake: 'data'})
    scope = $rootScope.$new()
    BillCtrl = $controller 'BillCtrl', {
      $scope: scope
    }

  it 'should add the 20 most recent bills to the dropdown menu', () ->
    expect(scope.bills.length).toBe > 0;