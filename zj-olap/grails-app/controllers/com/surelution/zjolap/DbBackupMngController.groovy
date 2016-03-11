package com.surelution.zjolap

import grails.util.Holders

class DbBackupMngController {

    def index() {
		def download = params.download
		File dir = new File(Holders.config.db.backup.file.path)
		def ff = new FilenameFilter() {
			boolean accept(File d, String name) {
				name.endsWith(".sql")
			}
		}
		[files:dir.listFiles(ff).sort(){-it.lastModified()}, download:download=="1"]
	}
	
	def download(String id) {
		def file = new File("${grailsApplication.config.db.backup.file.path}${id}")
		response.outputStream << new FileInputStream(file)
	} 
}
