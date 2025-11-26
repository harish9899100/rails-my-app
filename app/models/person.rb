class Person
  extend ActiveModel::Callbacks

  define_model_callbacks :update

  before_update :reset_me
  after_update :finalize_me
  around_update :log_me

  # `define_model_callbacks` method containing `run_callbacks` which runs the callback(s) for the given event
  def update
    run_callbacks(:update) do
      puts "update method called"
    end
  end

  private
    # When update is called on an object, then this method is called by `before_update` callback
    def reset_me
      puts "reset_me method: called before the update method"
    end

    # When update is called on an object, then this method is called by `after_update` callback
    def finalize_me
      puts "finalize_me method: called after the update method"
    end

    # When update is called on an object, then this method is called by `around_update` callback
    def log_me
      puts "log_me method: called around the update method"
      yield
      puts "log_me method: block successfully called"
    end
end
