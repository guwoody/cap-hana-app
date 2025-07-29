using app.interactions as interactions from '../db/interactions';
using { sap } from '@sap/cds/common';

service CatalogService {
    @odata.draft.enabled
    entity Interactions_Header as projection on interactions.Headers;

    entity Interactions_Items as projection on interactions.Items;
    @readonly
    entity Languages as projection on sap.common.Languages;
}