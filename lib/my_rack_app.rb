class MyRackApp
  def self.call(env)
    js_code =
      'console.log("Application JS loaded via Rack");' \
      'document.addEventListener("DOMContentLoaded", function () {' \
      "  window.MyApp = {" \
      '    version: "1.0.0",' \
      "    greet: function(name) {" \
      '      alert("Hello " + name);' \
      "    }" \
      "  };" \
      "});"

    [
      200,
      { "Content-Type" => "application/javascript" },
      [ js_code ]
    ]
  end
end
