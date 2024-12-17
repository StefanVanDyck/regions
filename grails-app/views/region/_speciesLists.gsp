<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<zones>
    <zone id="speciesListsZone"><![CDATA[

        <tbody tagName="tbody" id="speciesListsZone" aa-queue="abort">
        <g:each in="${speciesLists}" var="speciesList">
            <tr id="${speciesList.listName.replaceAll(/[^A-Za-z\\d_]/, "")}-row"
                class="group-row link" href="${g.createLink(controller: 'region', action: 'showSpeciesListSpecies')}"
%{--                ${group.parent ? "parent=${group.parent.replaceAll(/[^A-Za-z\\d_]/, "")}-row style=display:none" : ""}--}%
                aa-refresh-zones="speciesListsZone"
                aa-js-before="regionWidget.selectSpeciesListHandler('${speciesList.listName.encodeAsJavaScript()}', '${group.fq.encodeAsJavaScript()}');"
                aa-js-after="regionWidget.speciesListLoaded();"
                aa-queue="abort">
                <td class="level1">
                    ${speciesList.listName}
                </td>
            </tr>
        </g:each>

        </tbody>]]></zone>
</zones>