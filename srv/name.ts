import cds, { ApplicationService } from '@sap/cds'
import { Request } from '@sap/cds/apis/events'
import { Name } from '#cds-models/NameService'

class NameService extends ApplicationService {
    async init(){

        this.after("READ", Name , names => this.concatName(names as Iterable<Name>))
        super.init()
    }

    private concatName(names:Iterable<Name>){
        for(const name of names){
            name.FullName = name.FirstName + " " + name.LastName;
        }
    }
}

module.exports = { NameService }