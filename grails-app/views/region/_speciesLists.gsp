<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<zones>
    <zone id="speciesListsZone"><![CDATA[

        <tbody tagName="tbody" id="speciesListsZone" aa-queue="abort">
        <g:each in="${speciesLists}" var="speciesList">
            <tr id="${speciesList.listName.replaceAll(/[^A-Za-z\\d_]/, "")}-row"
                class="species-list-row link" href="${g.createLink(controller: 'region', action: 'showSpeciesListSpecies')}"
%{--                ${group.parent ? "parent=${group.parent.replaceAll(/[^A-Za-z\\d_]/, "")}-row style=display:none" : ""}--}%
                aa-refresh-zones="speciesListSpeciesZone"
                aa-js-before="regionWidget.selectSpeciesListHandler('${speciesList.listName.encodeAsJavaScript()}', '${speciesList.dataResourceUid.encodeAsJavaScript()}', 'speciesListUid:${speciesList.dataResourceUid.encodeAsJavaScript()}');"
                aa-js-after="regionWidget.speciesListLoaded();"
                aa-queue="abort">
                <td class="level1">
                    ${speciesList.listName}
                    <a href="${grailsApplication.config.getProperty('speciesList.baseURL')}/speciesListItem/list/${speciesList.dataResourceUid}"
                       target="_blank"
                       class="external-link"
                       rel="noopener noreferrer"
                       title="Open conservation list details"
                       onclick="event.stopPropagation();">
                        <i class="fa-solid fa-up-right-from-square"></i>
                    </a>
                </td>
            </tr>
        </g:each>

        </tbody>]]></zone>
</zones>