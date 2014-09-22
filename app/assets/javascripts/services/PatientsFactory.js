doctorsOffice.factory('PatientsFactory', function patientsFactory($http) {
  var factory = {};

  factory.getPatients = function() {
    return $http.get('/patients.json')
  };

  factory.addPatient = function() {
    console.log(factory);
    return $http.post('/patients.json', factory)
  };

  factory.deletePatient = function(patient) {
    return $http.delete("/patients/" + patient.id + ".json")
  };

  factory.updatePatient = function(patient) {
    return $http.put(("/patients/" + patient.id + ".json"), patient);
  };
  return factory;
});
