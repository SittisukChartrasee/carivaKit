const describe = `
Usage: $0 [-e eye_string] [-f cowfile] [-h] [-l] [-n] [-T tongue_string] [-W column] [-bdgpstwy] text
		
If any command-line arguments are left over after all switches have been processed, they become the cow's message.
		
If the program is invoked as cowthink then the cow will think its message instead of saying it.
`

const options = {
  template: {
    type: 'string'
  }
}

const detailScript = {
  template: "Template to use",
}

exports.yargs = require('yargs')
  .usage(describe)
  .options(options)
  .describe(detailScript)
  .boolean(['b', 'd', 'g', 'p', 's', 't', 'w', 'y', 'n', 'h', 'r', 'l'])
  .help()
  .alias('h', 'help');