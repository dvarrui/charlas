# File: nginx.rb (Tests específicos de Nginx)

group "Comprobar el servicio web Nginx" do
  readme "* Necesitamos un SO GNU/Linux basado en systemd. Por ejemplo: OpenSUSE, Debian, etc."

  target "Comprobar el estado del servicio Nginx"
  run "systemctl status nginx", on: :webserver
  expect "Active: active (running)"

  target "Comprobar que index.html contiene el texto 'Hola NOMBREALUMNO!'"
  readme "Se asume que Nginx está instalado en su ruta por defecto."
  run "cat /var/www/html/index.html", on: :webserver
  expect "Hola #{get(:tt_members)}!"
end

group "Comprobar Nginx desde el exterior" do 
  readme "* El servicio web Nginx debe estar accesible desde el exterior\n"
  readme "* El servicio debe estar escuchando en el puerto 80\n"
  readme "* El cortafuegos debe permitir el acceso al puerto 80\n"

  target "Comprobar que index.html contiene el texto 'Hola NOMBREALUMNO!'"
  readme "Se asume que Nginx está instalado en su ruta por defecto."
  run "cat /var/www/html/index.html", on: :webserver
  expect "Hola #{get(:tt_members)}!"
end
