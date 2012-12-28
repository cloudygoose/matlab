/*
 * MATLAB Compiler: 4.16 (R2011b)
 * Date: Fri May 25 13:45:59 2012
 * Arguments: "-B" "macro_default" "-W" "java:testGene,Gene" "-T" "link:lib" "-d" 
 * "E:\\program\\matlab\\testGene\\src" "-w" "enable:specified_file_mismatch" "-w" 
 * "enable:repeated_file" "-w" "enable:switch_ignored" "-w" "enable:missing_lib_sentinel" 
 * "-w" "enable:demo_license" "-v" 
 * "class{Gene:E:\\program\\matlab\\GeneratePointsOnSphere.m}" 
 */

package testGene;

import com.mathworks.toolbox.javabuilder.*;
import com.mathworks.toolbox.javabuilder.internal.*;

/**
 * <i>INTERNAL USE ONLY</i>
 */
public class TestGeneMCRFactory
{
   
    
    /** Component's uuid */
    private static final String sComponentId = "testGene_85F39030679BF896DF25D77BA82F03EA";
    
    /** Component name */
    private static final String sComponentName = "testGene";
    
   
    /** Pointer to default component options */
    private static final MWComponentOptions sDefaultComponentOptions = 
        new MWComponentOptions(
            MWCtfExtractLocation.EXTRACT_TO_CACHE, 
            new MWCtfClassLoaderSource(TestGeneMCRFactory.class)
        );
    
    
    private TestGeneMCRFactory()
    {
        // Never called.
    }
    
    public static MWMCR newInstance(MWComponentOptions componentOptions) throws MWException
    {
        if (null == componentOptions.getCtfSource()) {
            componentOptions = new MWComponentOptions(componentOptions);
            componentOptions.setCtfSource(sDefaultComponentOptions.getCtfSource());
        }
        return MWMCR.newInstance(
            componentOptions, 
            TestGeneMCRFactory.class, 
            sComponentName, 
            sComponentId,
            new int[]{7,16,0}
        );
    }
    
    public static MWMCR newInstance() throws MWException
    {
        return newInstance(sDefaultComponentOptions);
    }
}
