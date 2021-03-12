@RestResource(urlMapping ='/getAccount/*')
global with sharing class getAccount {
	
    @HttpGet
    global static List<Account> getAccountInfo(){
        List<Account> acc = [Select id, name from Account LIMIT 10];
        return acc;
    }
}