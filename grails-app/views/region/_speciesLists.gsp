<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<zones>
    <zone id="speciesListsZone"><![CDATA[

        <tbody tagName="tbody" id="speciesListsZone" aa-queue="abort">
        <g:each in="${speciesLists}" var="speciesList">
            <tr id="${speciesList.listName.replaceAll(/[^A-Za-z\\d_]/, "")}-row"
                class="species-list-row link" href="${g.createLink(controller: 'region', action: 'showSpeciesListSpecies')}"
%{--                ${group.parent ? "parent=${group.parent.replaceAll(/[^A-Za-z\\d_]/, "")}-row style=display:none" : ""}--}%
                aa-refresh-zones="speciesListSpeciesZone"
                aa-js-before="regionWidget.selectSpeciesListHandler('${speciesList.listName.encodeAsJavaScript()}', '${speciesList.dataResourceUid.encodeAsJavaScript()}', null);"
                aa-js-after="regionWidget.speciesListLoaded();"
                aa-queue="abort">
                <td class="level1">
                    ${speciesList.listName}
                </td>
            </tr>
        </g:each>

        </tbody>]]></zone>
</zones>