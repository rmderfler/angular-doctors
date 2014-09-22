

doctorsOffice.factory('DoctorsFactory', function doctorsFactory($http) {
  var factory = {};

  factory.getDoctors = function() {
    return $http.get('/doctors.json')
  };

  factory.addDoctor = function() {
    console.log(factory);
    return $http.post('/doctors.json', factory)
  };

  factory.deleteDoctor = function(doctor) {
    return $http.delete("/doctors/" + doctor.id + ".json")
  };

  factory.updateDoctor = function(doctor) {
    return $http.put(("/doctors/" + doctor.id + ".json"), doctor);
  };
  return factory;
});
