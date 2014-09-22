doctorsOffice.controller('PatientsCtrl', function PatientsCtrl($scope, PatientsFactory) {
  $scope.PatientsFactory = PatientsFactory;
  $scope.patients = PatientsFactory.patients;

  $scope.getPatients = (function() {
    PatientsFactory.getPatients()
      .success(function(data) {
        console.log(data);
        $scope.patients = data;
    })
  })();

  $scope.addPatient = function() {
    PatientsFactory.addPatient(PatientsFactory.patientName)
      .success(function(data) {
        console.log(PatientsFactory);
      $scope.patients.push({name: PatientsFactory.patientName});
        PatientsFactory.patientName = null;
    })
  }

});
