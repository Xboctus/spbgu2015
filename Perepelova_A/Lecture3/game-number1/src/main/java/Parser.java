
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by user on 19.11.2015.
 */

public class Parser extends TagSupport {

    public Integer parse(String value)
    {
        return  Integer.parseInt(value);
    }
}
