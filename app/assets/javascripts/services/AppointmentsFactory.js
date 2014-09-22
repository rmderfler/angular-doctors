doctorsOffice.factory('AppointmentsFactory', function appointmentsFactory($http) {
  var factory = {};

  factory.getAppointments = function() {
    return $http.get('/appointments.json')
  };

  factory.addAppointment = function() {
    console.log(factory);
    return $http.post('/appointments.json', factory)
  };

  factory.deleteAppointment = function(appointment) {
    return $http.delete("/appointments/" + appointment.id + ".json")
  };

  factory.updateAppointment = function(appointment) {
    return $http.put(("/appointments/" + appointment.id + ".json"), appointment);
  };
  return factory;
});
