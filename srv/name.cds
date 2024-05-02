using {sap.concat as model } from '../db/schema';

service NameService {
    @odata.draft.enabled
    entity Name as projection on model.Name;
}