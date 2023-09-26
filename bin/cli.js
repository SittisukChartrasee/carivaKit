#!/usr/bin/env node
const path = require('path')
const util = require('util')
const child = require('child_process')
const exec = util.promisify(child.exec)
const yargs = require('./help').yargs


// const argv = yargs.argv;

// child.exec("ls -l", (stdout, stderr) => {
//   console.log(stdout, stderr)
// })

console.log(require('../lib/listTemplate').library())


const pathfile = path.join(__dirname, './run.sh')
runCmd(pathfile, "3").then(({ stdout, stderr }) => {
  console.log(stdout, stderr)
})


async function runCmd(cmd, arg){
  try {
    const { stdout, stderr } = await exec(cmd + " " + arg)
    return { stdout, stderr }
  }
  catch { }
}