/**
 * Created by jch66 on 1/31/2016.
 */
class RemoveLines {

    public static void main(String[] args) {
        final String NEW_LINE = System.getProperty('line.separator')
        final String CHARSET = 'GB18030'
        String sourceFileName = 'D:\\Downloads\\西游记s.txt'
        String targetFileName = 'D:\\Downloads\\西游记g.txt'
        List<String> lines = new File(sourceFileName).readLines(CHARSET)
        new File(targetFileName).withWriter(CHARSET) { writer ->
            lines.each { line ->
                if( line.toUpperCase().indexOf('SHUBAO2S') ==-1 ) {
                    writer.write(line)
                    writer.write(NEW_LINE)
                }
            }
        }
    }
}
