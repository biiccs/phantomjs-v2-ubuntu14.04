var page = require('webpage').create(),
    system = require('system'),
    address, output;

if (system.args.length != 3) {
    console.log(system.args);
    console.log('Usage: download.js URL filename');
    phantom.exit(1);
} else {
    address = system.args[1];
    output = system.args[2];

    page.viewportSize = { width: 1024, height: 768 };
    page.open(address, function(status) {
        if (status !== 'success') {
            console.log('Unable to load the address!');
            phantom.exit(1);
        } else {
            console.log('Success!');
            window.setTimeout(function () {
                page.render(output);
                phantom.exit();
            }, 200);
        }
    });
}
