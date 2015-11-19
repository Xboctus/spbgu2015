import javax.servlet.jsp.tagext.TagSupport;
import java.util.Random;

/**
 * Created by user on 19.11.2015.
 */
public class CheckLoseWin extends TagSupport {


    public boolean checking(Integer value){
        Random random = new Random();
        if(value.equals(random.nextInt(101)))
            return true;
        else
            return false;
    }
}
