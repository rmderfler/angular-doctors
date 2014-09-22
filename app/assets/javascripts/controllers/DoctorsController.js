doctorsOffice.controller('DoctorsCtrl', function DoctorsCtrl($scope, DoctorsFactory) {
  $scope.DoctorsFactory = DoctorsFactory;
  $scope.doctors = DoctorsFactory.doctors;

  $scope.getDoctors = (function() {
    DoctorsFactory.getDoctors()
      .success(function(data) {
        console.log(data);
        $scope.doctors = data;
    })
  })();

  $scope.addDoctor = function() {
    DoctorsFactory.addDoctor(DoctorsFactory.doctorName)
      .success(function(data) {
        console.log(DoctorsFactory);
      $scope.doctors.push({name: DoctorsFactory.doctorName});
        DoctorsFactory.doctorName = null;
    })
  }

});

