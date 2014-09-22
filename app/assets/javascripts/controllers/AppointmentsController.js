doctorsOffice.controller('AppointmentsCtrl', function AppointmentsCtrl($scope, AppointmentsFactory) {
  $scope.AppointmentsFactory = AppointmentsFactory;
  $scope.appointments = AppointmentsFactory.appointments;

  $scope.getAppointments = (function() {
    AppointmentsFactory.getAppointments()
      .success(function(data) {
        console.log(data);
        $scope.appointments = data;
    })
  })();

  $scope.addAppointment = function() {
    AppointmentsFactory.addAppointment(AppointmentsFactory.appointmentName)
      .success(function(data) {
        console.log(AppointmentsFactory);
      $scope.appointments.push({name: AppointmentsFactory.appointmentName});
        AppointmentsFactory.patientName = null;
        AppointmentsFactory.doctorName = null;
        AppointmentsFactory.appointmentTime = null;
    })
  }

});
