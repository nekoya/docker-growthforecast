require 'serverspec'
require 'docker'

set :backend, :docker_exec
set :container_name, 'growthforecast_spec__'

module Specinfra::Backend
  class DockerExec < Exec
    def run_command(cmd, opts={})
      cmd = "docker exec -it #{Specinfra.configuration.container_name} " + cmd
      super(cmd, opts)
    end
  end
end

describe 'GrowthForecast' do
  before(:all) do
    @container = Docker::Container.create(
      'name' => "growthforecast_spec__",
      'Image' => "growthforecast",
    )
    @container.start()
  end

  after(:all) do
    @container.stop
    @container.remove
  end

  describe port(5125) do
      it { should be_listening }
  end
end
