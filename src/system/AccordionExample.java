package system;

import pukkaBO.accordion.Accordion;
import pukkaBO.accordion.AccordionSection;
import pukkaBO.accordion.AccordionInterface;
import pukkaBO.style.StyleWidth;

/**
 *      Very simple accordion that just shows some static text
 *      It takes a player id as a parameter in the constructor as it is used in a list of players
 *
 */
public class AccordionExample extends Accordion implements AccordionInterface {

    public AccordionExample(String name){

        super(name);

        //Now construct the sections
        //TODO: Use method here

        sections.add(new AccordionSection("One", "Section 1", "text 1...", AccordionSection.COLLAPSED, StyleWidth.Third));
        sections.add(new AccordionSection("Two", "Section 2", "text 2...", AccordionSection.EXPANDED , StyleWidth.Third));
    }
}
