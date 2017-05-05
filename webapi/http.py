import json
import falcon
import commands

class HelloResource(object):

    def on_get(self, req, resp):
        msg = {
            "message": "Welcome to the minecraft web api"
        }
        resp.body = json.dumps(msg)

class RestartResource(object):

    def on_get(self, req, resp):

        check = commands.getoutput("systemctl restart minecraft_server")

        msg = {
            "message": "ok minecraft server is restarted"
        }
        resp.body = json.dumps(msg)

class StopResource(object):

    def on_get(self, req, resp):

        check = commands.getoutput("systemctl stop minecraft_server")

        msg = {
            "message": "ok minecraft server is stopped"
        }
        resp.body = json.dumps(msg)

class StartResource(object):

    def on_get(self, req, resp):

        check = commands.getoutput("systemctl start minecraft_server")

        msg = {
            "message": "ok minecraft server is started"
        }
        resp.body = json.dumps(msg)

class RebootResource(object):

    def on_get(self, req, resp):

        check = commands.getoutput("reboot")

        msg = {
            "message": "ok minecraft server is reboot"
        }
        resp.body = json.dumps(msg)

app = falcon.API()
app.add_route("/", HelloResource())
app.add_route("/restart", RestartResource())
app.add_route("/stop", StopResource())
app.add_route("/start", StartResource())
app.add_route("/reboot", RebootResource())

if __name__ == "__main__":
    from wsgiref import simple_server
    httpd = simple_server.make_server("127.0.0.1", 25567, app)
    httpd.serve_forever()
