local command = {}

  function command.Main(env)
      function cfg(args)
          env.OutPut('CFG Running.')
      end

      env.RegisterCommand('cfg', cfg)
  end

return command
