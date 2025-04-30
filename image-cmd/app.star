load("container.in", "container")

def run(dry_run, args):
    split = args.command.split(" ")
    res = container.run(split[0], split[1:], parse_json=args.json).value
    return ace.result("Command output", res)

app = ace.app(param.app_name + " : " + param.image ,
    actions=[
       ace.action("Run Command using " + param.image, "/", run, description="Run specified command in container", hidden=["secrets", "app_name", "image"])
    ],
    container=container.config("image:" + param.image, lifetime=container.COMMAND),
    permissions=[
       ace.permission("container.in", "config", ["image:" + param.image], secrets=param.secrets),
       ace.permission("container.in", "run", secrets=param.secrets)
    ]
) 
