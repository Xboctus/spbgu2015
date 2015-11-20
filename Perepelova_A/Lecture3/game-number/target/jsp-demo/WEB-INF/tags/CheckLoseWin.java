import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Random;

/**
 * Created by user on 19.11.2015.
 */
public class CheckLoseWin extends SimpleTagSupport {

    private Integer value;
    public void  setValue(Integer val){
        this.value = val;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        try{
            out.print(checking(value));
        }
        catch (NullStringExeption e)
        {
            e.printStackTrace();
        }
    }

    public boolean checking(Integer value)throws NullStringExeption{
        Random random = new Random();
        if(false) throw new NullStringExeption("fff");
        if(value.equals(random.nextInt(101)))
            return true;
        else
            return false;
    }
}
