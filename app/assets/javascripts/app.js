var doctorsOffice = angular.module('doctorsOffice', ['ngRoute', 'templates']);

doctorsOffice.config(function ($routeProvider) {
 $routeProvider
    .when('/',
      {
        controller: 'DoctorsCtrl',
        templateUrl: 'Doctors.html'
      })

     .when('/patients',
        {
          controller: 'PatientsCtrl',
          templateUrl: 'Patients.html'
        })

     .when('/appointments',
        {
          controller: 'AppointmentsCtrl',
          templateUrl: 'Appointments.html'
        })
     .otherwise('/')
 });
